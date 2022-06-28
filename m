Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8A37A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 20:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656448012;
	h=To:Subject:From:Message-Id:Date;
	bh=to06vdnMR1WrnwSO4VJP3q7FHrYf5Txj1P1zeaUstdA=;
	b=N2R1JvdebIk3VBoF0V+mAkR8RMWXaZmZOn++JJNTARaIhOCKuOO5mZxwfNsyU1G7
	zOqB5PgdjkTuv0qoNuhOlSUXu20xbtoD8SQQ2jHAbmycbJdTEoIFzRiGTX9TaJVhhfV
	8d3RStbJtNp7iSF3qOhuawwsB8onaTx9MnLlLwI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656448012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=to06vdnMR1WrnwSO4VJP3q7FHrYf5Txj1P1zeaUstdA=;
	b=HpIiZnmMRXAKjFZ63SPLmzDEe3sCWlNo5Rvti0n8hOj3x3maJ0caehBSFqs9fGER
	MrqtSOvillCRsTN81LJsdcfModGMGfE5YQc/c2S4mdPQiwxGwa8qZ6mxrLSaSAQL6wd
	5cbNanYUIFlMmIuBI6MJDhys1AyTFXAo1CNqcYrk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181abfed031-2ec30ed7-0b5d-4c6c-be7b-7aaa18405d6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d86ca1622dbd8f9586a8edfb73f41a70d1e14448f3cfdba358260b7d43f05921
Date: Tue, 28 Jun 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656448012
