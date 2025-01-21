Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350961B425E
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737452154; cv=none; b=O/+kNdx3+IY31TTJuOMqgHEG4th2Lio1uuKMFksusb3d2DhtbtuZrasTUFaoCw8V4I/yFdPWYt14CxBzJm2yEdQ8ckU5iwzzYPvICx9+QKUCxib3UZLc4G0+YHjC/RtD3QKoxFjgBSEYVEOLFUKih+Hvkty/A7p8e+L4h6o/GOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737452154; c=relaxed/simple;
	bh=BASWxj/GEtyPG82lwsQKu+LYuGYSVFNpJKxXbv1XsSE=;
	h=To:Subject:From:Message-Id:Date; b=uxj4P9SAAZtlZLIaIrYTR2KNgT125+En3KwYLTa3wehtmyZGX/CIYVqvGG0zXbTAoPUdia1hMqwwtC2QgrCNzBAgpithdFln/FNfmbMO5Bonj7pM8LiT6+HV3IkA/hTAjQOikBvS3CjaUsSCSR4JxCyf4Q/W7BCBH0eRea9N4k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhztOAjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhztOAjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE05C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737452153;
	bh=BASWxj/GEtyPG82lwsQKu+LYuGYSVFNpJKxXbv1XsSE=;
	h=To:Subject:From:Date:From;
	b=NhztOAjXo125ysuDt6FGW2n2oYIiJXNBxZWc/G3bOym7GvVRG+6//qjE9GSWTg75y
	 G7BigCo5tpFr+jxjVML9qcJQjGXsnZcHRyihcSsppv1G9okYi9ueL+PK/8j9joQeOH
	 nsQC0xDk6TulCC4gWbLLoEGD3tZ7/ES9wSX6lkG65yhmhBchbO1utTISPkP7t6uy7V
	 26/iJRgPeVSEoUP1moWZzndeSvM7PhmVg3eDh1kr1c12WBNCsNY/U4kZ6d7ZMa8hTH
	 JNefhLlaZRotf1mJ1xgl6PDYVCqdL9MD3Nf25Lp1k6bxDfguxmXMwCr2HrXjYn3sdr
	 mSfapxUL3ASdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954FFC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173745215360.25064.18094331358660328640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2d00b702464227a70c46258e45f5b55a45b4b68dc9652604344475461260abf
Date: Tue, 21 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737452153
