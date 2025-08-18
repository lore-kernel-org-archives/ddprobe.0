Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D571E008B
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755500994; cv=none; b=Hb+QWe0ejxR6T/jr/IorI8jTD3RndqNSXCz86WC3mH/mpR9pgJE1y7Ew9FNBTGf2t2558m18QGR1PIxxMQih51FjbxDXKhpTesYVRnd/ttd1WWxZfIv8yWXl9Ij1+22ZxjR7BUsAJdc6gn7HO+4Fa6H8Iyh7+jc8XXWBX4/ZfEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755500994; c=relaxed/simple;
	bh=7qUAcKQyATNpB+yEkAHOTsnyjvr70yL2OyKKbIGjoAc=;
	h=To:Subject:From:Message-Id:Date; b=uoSc7SZ/CRY+Q8ICySslgg9KdpXno84Ekrl1JhJtDkOAr+b/l95R2f+EnGX5RXEVgiiQivcVNHYCpo+KiE5Nc8yY23bCrmWyahiLCveCssyC4JendT1RBsmgMVoNT1+SvTEMjQCg9v7FoP1iVqx9QMjUpYL3SmqOL2Vlk0Tu7/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SebAX9L/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SebAX9L/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C2CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755500993;
	bh=7qUAcKQyATNpB+yEkAHOTsnyjvr70yL2OyKKbIGjoAc=;
	h=To:Subject:From:Date:From;
	b=SebAX9L/bHUq0WtvDfPleqaCo5GpRDYy8b9bV7sugHlW4YFqTI2AZ+pn80DaWzaDB
	 GjcqcMM27RgLGvU4quWDokATdSUKnSNDwCnezJyXy6g7hPuKY5goX+Mm8gUMqGLFjS
	 mohZPoNBYclP6BKygvYo6rkj29GqdyX/3REGU+l95tjqqc0VN16+tBLtxIoZ0jY909
	 aLGClBnCr+QWPbnWkcMIZeUOw4q9zbgcfnD8z6orB8rZFb6tcT+ZSRX8OBJtxc8s59
	 A9SQ/5542c5dUJ4nyVMtkjK2GOCaArHFcwCM/Qq8+5Qai4SzPkY/5r0T3SqzMWs7oK
	 Gr7edf6Y/HVXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9089BCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550099358.20716.4421982755731348685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674377397792fcca472ae3beafc94170cf14ba32efc723f8ae4c84414d455eb5
Date: Mon, 18 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755500993
