Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3047A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 16:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654793039;
	h=To:Subject:From:Message-Id:Date;
	bh=Kt/t6W5ti/JY683PwKbCUX+ueb7tWNc7oziWna5E1g4=;
	b=KImScAzESZSRLvci4JqKK9sEq/vnRqXfcEAf5Xn3Ba6xcnSS+nvM9UrCU+3r0JCc
	FwE1XBGYwIgNnnVS/f/9SiMlAHoJbpn/+SKoiKmW5qoAuaxD8czOkUmXqVm9k3eOj5E
	wgMj3z/L2wZxiMR+7OxJhfwQhKRyav4UyP/lafhw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654793039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kt/t6W5ti/JY683PwKbCUX+ueb7tWNc7oziWna5E1g4=;
	b=UMKGZKj+8pGNva/8C5vFO6WP0ffNDplNdmKBFw0D6oB6QnnFXc1CozjlcQOa+uNr
	FFdqG6RjoEFZHbpNraQ64Lg5VxV5opOjBQuo/oOOVVfrWhhMk5nlk3Js3IkiQO/o0Ow
	t51hmFupCpfDhqcfoevd2d2JKMh8LqtZaVAFW6U0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814959ed8e-80d18f25-924f-4b55-81b9-ac69e14ba958-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6aa4d7807d812bbca1ddcdcfdebff05c2a9630493a6bef88bf16b022b4e5f909
Date: Thu, 9 Jun 2022 16:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654793039
