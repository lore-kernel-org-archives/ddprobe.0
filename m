Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F23B3B6C08
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781784994; cv=none; b=bedbSoX5duEFgigES3Ovv1RdGDkXpKw833ycqNCpdf9OGWIHYFjlfiSmVlJgAhkCmRSiGaHoKXFA9YvOz9Rhfkl08PntVhSSzHYq2OEcZlujtJ5Pv+woS4m+QGU0EplqY1hYDDjaTDQfAhWItF0WAclFfwkMteMyWQr1Wq0wwl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781784994; c=relaxed/simple;
	bh=HPcGpX/NBPmn6TAHxuYJlI5pMoI45Ss23ZREQ62pO90=;
	h=To:Subject:From:Message-Id:Date; b=nbpsRrm4q1gjQ4qRQ2qhLdehj9OjXmC3Gvcfx63YaIsQpqVjR2gUqy8AttAjh5QfEcjTCVGTF+E+RhSXRFU5x/Y0KZIDK3aSOeAolItInjnZdqeoAEu3JnAqbYcxN0IhEvSZGZLsEmWsHk133vzuWsu/xO4r8lSb8MWVKJWxuG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cc4ni9Fh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cc4ni9Fh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BC2C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781784993;
	bh=HPcGpX/NBPmn6TAHxuYJlI5pMoI45Ss23ZREQ62pO90=;
	h=To:Subject:From:Date:From;
	b=Cc4ni9FhfmcRO8XEF4ZL6cova/QnaXOOj9M8tNqbW6wFwW6fOZkFJ57FP+2BhViOv
	 T06vX+03uR1YloYynw1mcpserkEdWLKcyc0OiOtM5gtaTLZiUCxOPkkGY+1pGxODfm
	 K4l23P676JOm3GH3pTBE+MbCTB27NClXN0WBECGVPj6jxlv5Sdlpn9Y6aL2suYgA/E
	 0hPBeY9kLh8Vo8bhceLiWC8KzF2XTQ8uvYS8TiAuhq3PTo+T6gKSE6uMcgwka6/jza
	 tMNNVkN4a2MfANAUltY8K2t5v793aWHkasvhTw1rdTt0JtIa4k6rWsi26ds6Zb1yBo
	 gH3buYCrXKcfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1727CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 12:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178499371.8277.12555494773972920977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4282a66e6051b9ae882102e232208cfd45b353d052c8256585d1068641c07c6
Date: Thu, 18 Jun 2026 12:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781784993
