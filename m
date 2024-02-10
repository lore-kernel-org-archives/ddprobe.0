Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE4324214
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707553097; cv=none; b=WsfqbVYjTBZ5RoG+JDzOdTGQTLhLIcm4zhcHa6Hw66r12h70Qcc5noQ3aDHxFx1scaVIcbPe3KBlVyVIdpMB6sfXGxCgvk9uvTMPK6f0aGljS6BK941SvHm/SwPCH/VZFEa5ewujWx+lijSLG/f256eMq9XHfQgVkmpq7/IDZtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707553097; c=relaxed/simple;
	bh=zOqGwsUeY5wjCicMxU4nwmqzCph5LSSBXwq5Nax/rCg=;
	h=To:Subject:From:Message-Id:Date; b=p+o1vqyLi/+JZ+Prj8HZyWlC6YGL5eZMZ4PgKM7geQPOgB0vMiWGBN6wa/UuoltqetKfHI3jKaUmztoFtjOfiXdymsP/aMww5X9OejtffNPYPvunPSoZ2+NKLkc30xJCy73hFaHCE+KW8/CG5KRDW7AgsSkFAsafh2kVrWI7bnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPr+L3fM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPr+L3fM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78085C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707553096;
	bh=zOqGwsUeY5wjCicMxU4nwmqzCph5LSSBXwq5Nax/rCg=;
	h=To:Subject:From:Date:From;
	b=rPr+L3fMeG+zpRFXOXByUq56FoPpWkUHsczQFHEcVo6ieOqTltonE2RT3xZGn9IX6
	 nhYwD7cF94QJG0l0HVQHddMHndKJpEF43aVbmn9FQ0aXyke1F27EC7I7bNRhoaZL3j
	 KdZacDeREU6H/Uu6fhYvJWu+MREg+H0u69rnNUUoBVtO4aXP99vy05gYZtZdmxDfJX
	 vgaD31IiSBts9/GdW6vxReJiwqJadw/AEfkciTDQq8i0xiGnZefjho5U8QJs0YlY+M
	 DwPHdxovzj8kDxhNnaql/u3zuMlPr3nkJHPzXPkS0dog1sndem3VKJn4IBRZhpXVbv
	 5+X5wkwWmD+LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E5A9C4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170755309636.27588.3537694359851437265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab3cafc28c78ee354892dc7af8aedbdf3c3a8306d2dd0496899f01758bec972
Date: Sat, 10 Feb 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707553096
