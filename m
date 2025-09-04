Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271DD26A08A
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756988394; cv=none; b=aSRre9BVygVRZGwoujRAD+V6h3JgStC+Zozx3vWhFtvpx++pK8bQYDz2LXq46qWa/Wy/Jf60y9/rc4CpXvDcusGVZXo0toZWH95Am4V+AwZt5sMc5zkqfX/8b4+xA8W0i8mpnCmaJiQW86tueQFLzyOsY2FJlq5J5AVeTwdtCIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756988394; c=relaxed/simple;
	bh=RbnwCaFyqXuFyObH9Lq/G+cnJk+4zm2feP87D4Txw8U=;
	h=To:Subject:From:Message-Id:Date; b=E+In+VykBdm+Sb+qz4V3D7mQVWu84PTtUlmcqjOKwL6vefwxAzYXi03SMzxtAEoOhBCY2nmnbDgjGgic6Y8P0sVWcXtyoSGEDlISo/PkcOLMs6crjsQ17Mds5DnFQmsIwbPxHLJYRjvYh1Ub9rI53ei3tzIQ2TwzG6JJhknZibs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyLXKd5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyLXKd5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F72C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756988393;
	bh=RbnwCaFyqXuFyObH9Lq/G+cnJk+4zm2feP87D4Txw8U=;
	h=To:Subject:From:Date:From;
	b=NyLXKd5kQ+bEWIfRFw6TGlheltxa/NReozeT8dwzF5JZ/BHHc3ek2DdfdFVrcMWq9
	 fRy8BzAQmYJG9TmsJxlDEscUwhb1mddWxZU9WLJg9LXYGk9Oi4/ge9hjoDj0kXJjfU
	 c7TEOAYIuW5OHK4z9DiV0aKHk6Xsq01GpXl1Nvsbh9uomvwNwlaRfaT1goA101gydX
	 VUrhOa46wuMGJ439aiEsqbIBtOKNxBbqKpHvInrxrE+j7cz1Yvur7TsG5jLVkklyJd
	 kGZjYrCX5kXodZnzCg75TqTT+aCHriMJ5qoonVk6cYTXVdpn3yXHbYq0+6it5WVdnj
	 DiynfoH91ryww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4DECA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175698839357.23357.9491569549078651204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd4cc6c79f0a98fa3af22b45eb9787be69280ad04393e7ebec779392eed1142
Date: Thu, 04 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756988393
