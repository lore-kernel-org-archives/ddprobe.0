Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4287E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 04:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656910012;
	h=To:Subject:From:Message-Id:Date;
	bh=Er0dtr4VEIxGDUORdB10BNoPdIXXxPWjquxIG2tM5yo=;
	b=HvuPVpH5i7CpgEMAnhG2845+c7V5c7A6GWJt3VqXE+W2oB4ZMjYpBR0Kjjfe3DkF
	ECX39UA9I4tJJCnx45cBdEtq6kjtZLCHB631ej1GgIEjhsOUfj0lzynXcx+IGVe+z/x
	AQkUtbfWjo4TEe6D0Xo3uYfbO67tSasG8xmCUXD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656910012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Er0dtr4VEIxGDUORdB10BNoPdIXXxPWjquxIG2tM5yo=;
	b=E9TeW9zL7feLLuLR5+3SDQIvZP1YXt79a/QAiwH9kAngr9VF1NLjx1zmz2m7J4Me
	pCBfNMT/mCeCJo9asX+X1561oSSKsRqxad+W+B+lBFuD8qsipN32wnYAY7rTZ5oiUie
	Ae9W8gZET9A/1Xy28PbyipjBjFmwqtIrkYrXeY9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c7885f7c-ce65f78f-02e6-4933-88ea-d3baf19522b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a4904cd72b9b66bef6fd0805ee143e65af485a5571ebe29432165449233932e
Date: Mon, 4 Jul 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656910012
