Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D91AD2C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769238834; cv=none; b=cV4iyPJif54rFDWtR7F0cfAFvW5Pup9eK1RDMzRCRhKPoS2qM/szWGMlAfjNvnMYxGVbRKXhow5t28udx/1VtsVzE7WpKIKfF8MSCFRvhVSql6MbM54tuusLSm6yJt0au3lTJZ3+S9E5c1vFWcOM2PzCuOGpN1cpMkicnuBp/mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769238834; c=relaxed/simple;
	bh=T4RtnnjnQ99ApdUf2HnnLgRSY/AIyWj+p9KtoKhKEOM=;
	h=To:Subject:From:Message-Id:Date; b=rAlAV1KLmo8GKeKWoCPh3Tm7jGKC5FAd1P6gZ+/stOKUQvZ8UnH3t5cex1IAtLthrNiHcPNmCte61NLFVpQiWZshk6CY4WvmMC7/5p/XyAyeiGXf69vZRBw4q+uQ3JovrNxpLqDfyvRAhZ/S3ke+mXZ/D3Yib5TNwB+qvQ80Afk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0YvJrj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0YvJrj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB3BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769238833;
	bh=T4RtnnjnQ99ApdUf2HnnLgRSY/AIyWj+p9KtoKhKEOM=;
	h=To:Subject:From:Date:From;
	b=u0YvJrj4G5eVIxdLa/UCATCTThj9FJmGVBhbIuOlxfE5Up7Gm+wyw8XV1+hsRO7mz
	 XabDeDIVlMQ6Wv1yhxPy6hR3+lS7FfpoeH3HifAHLKmYf0x2TobMH7iFhn8+UBRsSN
	 9x4HmPLZfkddtwhNKllPRLgWHxWaM9lgQRPHXy8Rjt+JgUexp2FJUjdkFAp3f2L5T7
	 sJmjl8Y4J2Re5uLMyIHbl7mhtYSCZd/83ZlOy05pvRn95j1QylLHciBtvMRQg/DOja
	 +1hIh0ynCBt8HGxHb7ew/CViLsRuTVB0JdDzQyCGotF+EWrgl4jUVbN/d/PJdbY9iS
	 NcoHyppSQGaxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC0BD715C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176923883365.15697.5778945865965840575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d0136ad7b6277f50d025ac4effdfabebca80adb90eac2e938c25c16aff9942
Date: Sat, 24 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769238833
