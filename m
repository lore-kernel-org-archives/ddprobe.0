Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0174DF4DC
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788966634; cv=none; b=ljdhOfgNyk2w/OoxYopSdjBJLxF9WdWFD3PcTfXssaCphUd4obH65Csgs0KAc9zTrwejAL/Ci7tXN0ao87wnMIMYUDxlpQEs9w5GaUiVC3nhu2bKuMYVHGw4vGL7fC+mtg4r3H31Q16UyXKmVkmt1AnKRIz8vNtE9PnN5vXjucs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788966634; c=relaxed/simple;
	bh=FgPEyVKMA4kZN6h/eZ6FjJEXm4BJc0id6hLwIUTXX1w=;
	h=To:Subject:From:Message-Id:Date; b=q30fsYcS5VrgmUQmtpHBrcPY2YVnEKakKcU5Ury861j+x2epPfti8IYfC1Rjj3wP2Ca7glx04AkXpWgvv4OmhhQaZyVH+mWqeZlyb8RvNYlHzG/w2OtAWtQowHJOLgyZ/JJuVNS11JEjK3gxBReM5hoUxcA+Rr4UfeM7ZJ9GqfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hup43jL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hup43jL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEB3FC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788966634;
	bh=FgPEyVKMA4kZN6h/eZ6FjJEXm4BJc0id6hLwIUTXX1w=;
	h=To:Subject:From:Date:From;
	b=hup43jL75QH74Yt6seS6sUqYwzC+2tBi0okqQQXBZUF2Lr/X/fKprLWe8/dDDSoLb
	 zlFs7GxtOGGcaM5qU9FT6/EPnf9/c9vbNWhDJUVleZcHUsBrrUXAgdoD0zw0X/wAR7
	 LMHaOyPoZHsPFsVJ5IbSKn/52/QeslNTE2gRxHsFiNRy5j3Eq2XlABpJ2Q3CGA/48u
	 +PF4gLyI4PQq/d7V7//o2IvY3PYsUq8dJzlyHpXIvtaFybjXbwfP3UboQvkF6Rx0sR
	 ff8b8p6piGe+iMqtsS45IiaE61hFkYK2Ju9WPEn1HdEQN6V4pUIMbu0+V7ns9pM944
	 pwUgn1lpaWMTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8DB7C79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896663374.23298.10520696388919368577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0498707adc010428df4737ec286254d304442cd451db0dc3e58e423dc529d954
Date: Wed, 09 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788966633
