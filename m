Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE581A3179
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772132094; cv=none; b=ECWId282yA0NSjXSAIW++jRnTtK7RnggdMDHHH8XEfIFJN1JUX2qpIaiKVLC/8n4qam4Z83Ju3yhlJO2y74InhzWBSXCSU+PprDFgl02n9Hr4weVKzNVDH2XqyGMY5L8UdB5Jbvz1g9nFe3w5zpoCcnfGghXsbSNyF13WrAn9dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772132094; c=relaxed/simple;
	bh=BK1lndTUJgFl7AeZ4Zm6X6yJXF+OP4wqLxjAUdy5f+o=;
	h=To:Subject:From:Message-Id:Date; b=T2cFClECya1r/xs3SfBg81qnyU7n6PKuI8MNfyWGVbpYHBTxN+Qt0khKNoPIEXjWcTj0PHAn4ch4j8mAwA9Rl7PT+z5Zbyjoelqk1V/7lsbcWxYg+/aT5EfvK+YeDeQr5ckPHGqtR470tCtVyLWczjWOSwgnkTLVrFGWs0NljdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7CCjgM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7CCjgM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6856C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772132093;
	bh=BK1lndTUJgFl7AeZ4Zm6X6yJXF+OP4wqLxjAUdy5f+o=;
	h=To:Subject:From:Date:From;
	b=C7CCjgM8E9pd63/Trr/QbXf8jCzOknkmL405OLgBZeo+1xxL+dptflrKbdskjqDZ7
	 fHMcsGu3OgwZljoAkCpGiOIgfHHjIJGLaTYInwhzLmMfB4VIgSraVmxVP6BdKY3a1X
	 zdJnHumc7joTMwI8yAeWQu6fKqYpLZ8GPNF0F389DmASuEQNPfu6NDqDTdSV55ubXe
	 nvmhPGkUQaovq7tDxx3JMfVXrwWH+rpTTnPxg9AcOPlIKlQ47A4pWvNiJIG1WJkkQO
	 I1f98pD9hUWZg+FkLc6tWhTzjsEu9reLvSqDcHeiQvMwZE0/c4E+aNUrHGMH7urV2t
	 u6xkXC2XBs4Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91745FD8FF4
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177213209358.30895.1610253373472412841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2a32809e28cd5314774e6e82848a112fa1c59c691146f935bcca2f93ca3451
Date: Thu, 26 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772132093
