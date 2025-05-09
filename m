Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B9313A3F7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746754794; cv=none; b=DbycGHzmI9N4TB3rFwk8xFVZ+t1tXi+FhM+ZQruX4TSRhLZw039RHJ3NAcv+DdbLUs7u1Gdn74H2R18/XkrgoKylVty+yQcwU9jrSLT+hQ3QfoaSxWPtGDZopwuNPRmIM1u8XgCfryHgPSYPnFT3XXteh77BhhxtJspmPm5hfVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746754794; c=relaxed/simple;
	bh=iAcN0siWiIFugK/jTOl0TqW/vUGgMqEynm+v1BYBRUo=;
	h=To:Subject:From:Message-Id:Date; b=S9V+xhm4I5SvV9EntyAeEPw+QB04nXfTax7tiJp6lbZ4ZByC36lCzzSbtWIzd61FgO9U0HmtKVM0Fsz2wsDHVvuCYn6c/88lw8FIIM2RoXInvgJAqSCGX6SlP6mHuDmYZr/05FwdwFlD3y3PHhBcAFEWal6xw7bG6HXyKCY/8yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGz6IM76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGz6IM76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BB4C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746754793;
	bh=iAcN0siWiIFugK/jTOl0TqW/vUGgMqEynm+v1BYBRUo=;
	h=To:Subject:From:Date:From;
	b=FGz6IM769wsAMpj5bM3EBoWbMyOJ3iNIpvl6GrEkkpOFc7UCgoJx9bEQijoH7CBHu
	 MJ58n0tfKWtk+6JC/H5m/+p7xrwfl7RGzpo5w/4CrWylS/tAMsZ2ooSVJRwxNWxjX8
	 ha7aH+6A6hX5wKzq26Il1yEG6yTW4Y+ZikIV9aJ9oMxvm2TmC/sCAEpvkmzB/P6eV4
	 cQmOSoc+gZ4C5ovx3jqDkqCF+xaHjeHz81Fm6vfSFdREW8FKyn6+sctzpP2ZIuUUDo
	 fKNYA4EqcdsOCk3aSPQPmuLZEKFbLIy8QvlVocPCvKkNWgQ1CYSY4RpbuoUQI1lkmV
	 89k/18cfqRXhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91976C3ABBE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174675479357.18397.15701106962454770025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41db6274171412be66a288b4a27b63dac2b118158d9e121d16598659f5323264
Date: Fri, 09 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746754793
