Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C1323CD
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660909252;
	h=To:Subject:From:Message-Id:Date;
	bh=raEzhcfFEDspUPxxB4ZOUuNTIcCUfPFak5yshU9R0SU=;
	b=WI9AbJJMBwL4eWl7lv7ZwGllnPJtjzBjNuFDdaiGoXw/zW+z6LHn+hSTVo4nqGhK
	P/Q43icMrkJtoyEzCXp6wsPHB5Vzt0GwycfKbYpvG63YWtAO/pGUn/i3uZDnX6K9i/U
	zIEG9IUrIVwNVHWqVFR+uxixdnC67SNgChlWJqGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660909252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=raEzhcfFEDspUPxxB4ZOUuNTIcCUfPFak5yshU9R0SU=;
	b=YAl92YLgXXhBO1Lkn+ZeMziawUs/aq3jNnXpN9zS3YhGyvO8ACV8xnltEoXpGaGH
	91sIhFzcnbRrZdALqwj7oTGbJjp5gsWK9aTyvRXi6cr7EIYWS6xzbbCgyy+rb0J1+Yy
	OqlAGSEtlRzH8KYwFsMXM78BwtKCAQye8d4GBrGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b5e7efde-c4810671-4689-48f4-a2fa-9eab8824f256-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cea7285cc33a894868d87e7cb2e61f03c4961f73562635a9b6f17a32e5768f40
Date: Fri, 19 Aug 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660909252
