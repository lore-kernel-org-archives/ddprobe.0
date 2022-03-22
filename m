Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79228365
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647907884;
	h=To:Subject:From:Message-Id:Date;
	bh=LrMHVH93u3n6QvuCAwCiDEFKB7KejMW3J0ELoyQNaJI=;
	b=B1cGBGXV3UiQujayPfM68oDDj/bNolpm0Rl7u/XmnlwMatghuA0FMzaJsxd/3oCq
	gbsAz9RgOoaIgar3uWntLwOUDNpEp02qfll1PRZc/1Jp4L9gM4mnknlU0JAb3ITZgYQ
	LFxaL9EemDMJje/WzQDxFR4sRKM9Pqq6xFHRjcpQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647907884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LrMHVH93u3n6QvuCAwCiDEFKB7KejMW3J0ELoyQNaJI=;
	b=E9AKleAU7wa5M3e0mNTxDcvV2BkLe+R5P4rU8a4V17MsltBzdoIuNG0A7V6jRm/3
	WU1peM676BzAb4xx2BocO0g4ZhWXok2fbNCU5M2UeJZjnUxHWo1bd1hT9072R5nUU/G
	oj3OLmbU2FFXPG6+kXDKEPALGlg4wpgSIWVlfJj8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faef6cea3-339fd5cf-ef13-4a9e-bca7-f8d7cc2814f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fec26a5cfc56f75e538b27d043e3405f6038ddf4aee8d9c8f22b6787529d867
Date: Tue, 22 Mar 2022 00:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647907884
