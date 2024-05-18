Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C33510979
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 13:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716037943; cv=none; b=DE5lqdYxhL3Vr3w2ouqt7MKRxB89kU/z9MtkJPo8cWurqz4REKoPiK9SG2LbH+9ieHHqCrIw6rWmSLsDTGBq+/75TTzGsXtkhfK7CFDRsjlql01tF/Rd2MnKIgYRPwUkjZKoQBmNMEF/M+MwlX4BBvTIX9OyWDpAib3trhlce4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716037943; c=relaxed/simple;
	bh=uXQ+zJey/uNuV+88QuU2MajIeKyGnZ2uG51D9qnnhRI=;
	h=To:Subject:From:Message-Id:Date; b=K9UPXnZsZJHkG1cbTzyL+Fva8lcazZ4RWsYgLBddAf2y5FK7H6QrOQLWuuibJ3SB8NOMXpbsddG8K96o03vpsVpz4mTnokuLiF9mE6L/N6Ap7mB6jl99J2sBPFqoNYMVhlIqE644oyPyRLmt7tasOFZ+NA1iz98n0D9mr4MuJsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTwA3tgk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTwA3tgk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7512C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716037942;
	bh=uXQ+zJey/uNuV+88QuU2MajIeKyGnZ2uG51D9qnnhRI=;
	h=To:Subject:From:Date:From;
	b=FTwA3tgkTBicfO6L5SY2R8uOuSkp8u+j63IjlZYF4p6z9fP/KgGNPI4xzcCqiT2dy
	 jO46Kk2iNGzXhDaUK+w7jFTiyQA3YtWAnA4/1ZzNPsgOsF8jwtKUYmjPuEwCaY80YG
	 xHZm4cowUhEGB3EypTCe97pmMNbLIPLiPOlI2vCcgRw27C00zFjPuSjxjOKFj1EoRZ
	 l01ZXHSLnkS1i6XP3n5tkW/9M3jiuDoGxxZJ7Jgfg8QrlB02tadCq2Regtwhbu0sCP
	 SFLwxhVblgp/4HlnFWOz8AaENP+p7v4W+dUYqTYvqaVIYFyGLRCxc47o00R/wMbyVO
	 uy55J0ysSREVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCFCC25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171603794276.9370.12606638492441715938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6988e5e5d4bf9389acbc603918f4198f1f8f1e41872c88cbab90ef0d401828db
Date: Sat, 18 May 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716037942
