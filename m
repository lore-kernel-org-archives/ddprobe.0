Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A915623AF
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660413053;
	h=To:Subject:From:Message-Id:Date;
	bh=wXaUINEj9qzCG4dc0mfkOyZqNuSpNLLhGOm/GxO1dfg=;
	b=k+sF5Zjz/mPdnB6NOsW49wOuDkRtTm5Gqpe+i+s4J/eBnKzQf+l6y/1YYqLL0JEK
	ZaON7BbFfuDZVb/8S2PYCLKgpy3F5Cdq1q0UrCDl4sD8wae4/eYD8ocWKuhFhqao3LL
	+g+HWA1XF9BZ4MGQmT1/FyM/StB6G31+SCgOBL8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660413053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wXaUINEj9qzCG4dc0mfkOyZqNuSpNLLhGOm/GxO1dfg=;
	b=c9Kq8F5mjB+BwSp1SlouI9d0vwymKVqUTUOdGBLxErXsA85mzwsTgTxZITZ2/JpT
	7FqVQ4wozs8WyL4Alxb8RPOfCbfN3jGFz0vcIaBaqrZ3Bqr/iX7oZCBa+wIbL7AR4/2
	QEpaZ6bj+FIIgD+c87sENHiR46NCySyZSBvyw8AQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182985486aa-bd6b313f-c7e3-4873-81f4-6d7e9cb99ff2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6ce78c12b07f5d15f52a70efa2ee0210af6af61ea9a5bd6ebd2b7f44c558e6b
Date: Sat, 13 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660413052
