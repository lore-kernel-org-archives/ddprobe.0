Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0470D135A4D
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 11:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713872423; cv=none; b=uXgPxO8J58LrphgfGCgmR08qJDXeprMHB5wDJf8+b3XtsLm5YKsP1K+fzmDGzW7k5kLBtREHi2S7AzeAbX0ORk0MX+m3NW1a77u3klCzNh6+1mypseyF8rfv7nt/3zQS+dwA+iBCJ0bUrSwyloambR1aRklZ+U+MKiBM+zc8OLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713872423; c=relaxed/simple;
	bh=m7Ki3B3cdG0ycfLKfH8BOOeKEz7v4GF0F2esCKHlOdQ=;
	h=To:Subject:From:Message-Id:Date; b=nif9bLs6lYamV1EbSMWhflNsST6GP2/YVY4fu8hkbeSHGebRcfdv4hGsMsBqu3kUa2rQ5i5uH7xcfush3mlGFPofgk7QqDn9N3s0YRk+zIuBnK+Luh9OxfidBpCRNSOrm9GY4YqfLXZ/yWJeluQYLbdEBi86cPffDxrup7hnIRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoUnBx2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoUnBx2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E08C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 11:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713872422;
	bh=m7Ki3B3cdG0ycfLKfH8BOOeKEz7v4GF0F2esCKHlOdQ=;
	h=To:Subject:From:Date:From;
	b=PoUnBx2jGp0ST1seXSzS/FRI9AmN1E3tnJ+5huwLTKQq+xiawmjLjP3Jrh01X2y4C
	 fMO2jgxx39p4N2j3MS86QWTxD7fnYL4JYe+BS8IjVLnL1ZQIO+VmCpJi6zFSOgKEy1
	 zUZGvEG3Z/dFEFQXoRzIB5/zXBp+6IwnfuI4Ofz3vF8IErMKNjwAPYocXXsbU0FKo1
	 R823VV3r3IkX4NIwIp5qF5wXVjWsgmikSsSqwdgUhpbQtZmLtwIhDru2LTvIU9ZKgm
	 UC1oOop/uAbouWXXS59d5LqNcXxc1tQKg8wQWexUMxwy/UuXi5hpjVRYcnFTP+M/5O
	 NBD3pTZ8TspHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3EE9C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 11:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171387242278.22964.5138017659236857354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 690674c287636c6d121a6536ee7b86841ecd66007467fd4f8039e2177ff38d88
Date: Tue, 23 Apr 2024 11:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713872422
