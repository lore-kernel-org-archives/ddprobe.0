Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC03EC5
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 07:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649576938;
	h=To:Subject:From:Message-Id:Date;
	bh=MkwUJFHV/5k1Xk2wJ8hJ+E1ld4PCVHxG6ecdsHLBLI8=;
	b=cncBeR+6N4Ie9G3qlx4Wx65t59vj2yDXdtTwgZe32SH/r9GjeBaHXErJ/q9lsGrH
	AD4Y0c7myULoBNDv22DuRKOpL1b1fKoBIrstS123aUp0UB5Po/OcM4M3uqAYtJzab8x
	SWIQeYs8UbH9cjaY6DZ2h4CH1ZTTBONEDJauEXfA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649576938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MkwUJFHV/5k1Xk2wJ8hJ+E1ld4PCVHxG6ecdsHLBLI8=;
	b=KWrdF0BBT7M6AroCdg435FXs7zPJ3Los2jmJoB2+B7Ut+1j8WiOR8VFEp8CwBCyP
	MnaLA0e3HeUINYxYpU63eNt0JruCE91zcYWdK+U77TVCYFFmt2+xpXZqjex86D+t04x
	IyeYZqgcnmmBfw4Ih+xVgqGlOLMfLRbqDQLgVwaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018012728b1b-fcb265d4-96c0-4bbf-9996-536890e98897-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dd760e28230c64395a6c6d15d7bbf967e9b01173900878df8124e5063846f05
Date: Sun, 10 Apr 2022 07:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649576938
