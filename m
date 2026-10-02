Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FA4226CFE
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790910634; cv=none; b=ii5NS01pw9T72BojLFZgkhHKSK/oTH3/e4eK4VTYHvy5zoKCYDGw8RrLN0QqjkY8V4YVB16xqvqp3ytuWtJiwue5UWkjsqWYS+PMqmXk2BMEG5P9+SB8w8S39DHfl/XCPmiIrkVNb6DXho5/UJs9mscSUpYN97sCohw9gJ3+Iew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790910634; c=relaxed/simple;
	bh=3OAGOm03gScCQ13VtDnsRYEQfxwx9TzGItDUVVF+h38=;
	h=To:Subject:From:Message-Id:Date; b=PLaLytXAa5CZgLWeAgrUfCy1VB8TuHEs30g7eMr5p36kZZLEUmOfxSRJNLqqLNsfYRnXMnvIQWn0GD/y5Xatf4c9BfspM5FxCpbaaYpODrTuh+cv/1WWTMJFcCaRA/+YwYA0pbDraaX4U1pMKYm3fbwTtr87AqYZQsmllZhZcTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9Szg7hG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9Szg7hG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01296C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790910634;
	bh=3OAGOm03gScCQ13VtDnsRYEQfxwx9TzGItDUVVF+h38=;
	h=To:Subject:From:Date:From;
	b=b9Szg7hGEpXJw4pBuM7XdWl/UZeezZcWEt1fmo0HkOR1JP8BvGRUdkJl5nF7UjQ4G
	 XWhK/RcEYwHF84L7twYLhCfhZjdlfxsAOO9LfNGHegz706TeZrtMQ+1w6b6v8z3yjG
	 jTsJ5lJZigDGX0SynPR7LOwSdZzldwLm2ASj8msbkAD8VO2fWnHuy8o0AGQBfVwVae
	 6vCroKuE0vlVHQaInGRp0EOHoMjBdk7BnWe3Y4+JkMp0gGv2+jxbV0nmMC/j3fSwfE
	 IjhO09+NgfXttRNhKgrykn560nFI3v8ngbJjX2ZU8J/a8ILOJ1PKdZV9PlW5vi1x6w
	 sZi3Kb/kYyHzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3FFCA5FCE
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091063374.3413.1937887012071019205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01fdbc28bf63fb66b88816915b3a452c29042b2a7d14801b813525fbb3552dd
Date: Fri, 02 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790910633
