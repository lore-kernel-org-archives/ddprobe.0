Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113061D61B7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762592994; cv=none; b=VoiUdxozbLoXVKRqe8BsZ4/iiJqWMZ178LaZg5aiycaIn5Z+NAsTKT/G8KcirNHqt/tigq7uJqk6b4C3vCj8V7Nk7TK21f8KsPeWOBXaFgfAS6kAVeUdnK7iLUXZvhJrmjsM/YeGVBWioQJ53CHB4u0UwFJPy3+4t0Refflc/TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762592994; c=relaxed/simple;
	bh=/A/aMWQFszM0BSZxKr7sTsbBMnojY9yoAZyae1tfyWM=;
	h=To:Subject:From:Message-Id:Date; b=TBlFdrrzY5tJ1/BThW3pSv95bhhMZbAeBx0QYK55kaRhDV7+BPJ3i2VnCLykNtZoSTaJMpmZtOnSUSKzcmIg0e0bb/3mfAwgq8Y/to7DzxSeA6Ulciu4LmLeMJbKWBxsh6/nDMqRrKKaRvdiUPhdf4hD/mXD0aCCom/h+I1oNoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFAE7en6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFAE7en6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A42C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762592993;
	bh=/A/aMWQFszM0BSZxKr7sTsbBMnojY9yoAZyae1tfyWM=;
	h=To:Subject:From:Date:From;
	b=UFAE7en6lfwQRINejmt1XoYOmifjjhYvhwtY6br/QMC/Vl8D2AlNPw+aA65DIehly
	 JNUvf77fPBHZ3Icb96d59C3jFKodPAbI7+UbwTOGPdsYWHTT5COaEOWUl7eRzXgnYI
	 zUmXvB6TogQo9q/Xjtsh2f7rq9tX7o+tQ8mLfdRPy6/922/xTEbCyhrXF9toyPbpdx
	 g3aQUUWYF+ImY1H0nPp8RHKygg1k6rLaDA2913YqvFx3lk6Liio9VO3ZZ6A+qqsG/W
	 8UUG5LmaNwPCL7ntdPwYuEpesla4rOQT50wV5bVxO2AHwQ85za6wvdHYvpWz3U+Bq0
	 SWLIMbv9+7c8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977E1CCFA1A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176259299358.32635.12165085506935561309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef4420f1bbbc4c690d676467f16bed68748f193b3912f8d1a3969c17dd86f27
Date: Sat, 08 Nov 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762592993
