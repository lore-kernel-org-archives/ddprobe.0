Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8376617EF
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660962052;
	h=To:Subject:From:Message-Id:Date;
	bh=49hBD3KWF8VTSZMQxn2GdjjISgEWV7Qey2bWcZByvTU=;
	b=lFLOJcKli7SW+vu3B2loO77AgWSHCM8TGIONaS36iWK8KI6nGRw4Ps11zBO3hHFX
	ZoUe0K1ObKeZpO/eNhZH68LQ+him33pvMK5pDmC2MRuh/hYdeBesVECGj/0qBV5UglE
	QPCghoCaQwBEaDyBiDOdx5GYqmLxuhcPPzncgFlM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660962052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=49hBD3KWF8VTSZMQxn2GdjjISgEWV7Qey2bWcZByvTU=;
	b=C1lFoxAIqhIPshJNebLKjUFaPNYhLI3xbbvkOrefsK3xlKoxamr/tt9g8jf8ign9
	j/wBLpJQK+AogFVBAWpdRygNtOwMCW3u+E6WXWjOPoIEOqnfDLqTODj8HF8uWJrafJ7
	M53WuOjXMRJ7gywGNiGdAiRee5fVC+D1wTQAC5fE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b90d9a39-30bb9e4b-e652-482a-a8fb-42ca10470d51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b02185625e25b99fcbc75882d1cc3d906968bb28260cd12b7d583ff9497adac4
Date: Sat, 20 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660962052
