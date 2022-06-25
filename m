Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAF715A4
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 02:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656122812;
	h=To:Subject:From:Message-Id:Date;
	bh=VZl2j7ZPchWXtWfaCXjqOMaj4ArB/AUjLtD1zGmQXJw=;
	b=SLclaNpPBTXPRc7sPZFt3EtHa2+IsXFptEX4U9x9Ngi+uIA0obFL1KKd6DPQzVtE
	CTw7MKOuD00tPTOWyeOlmY6CA0CRMePFqOr4/FZhcX2cjVUh2NqzxJDCjQbDZaD2gZs
	72/3gAEPt4Fv2OOEmnq+wIYHLh77dr3cintTw9lo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656122812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VZl2j7ZPchWXtWfaCXjqOMaj4ArB/AUjLtD1zGmQXJw=;
	b=iW5wkK2WdX1zqHy1N4lDTYma79SQZNm9F+IZXtNhokc3coqK/eeeFwA5c0FsH4+f
	dQf8OYIv7YO1lyBXdc1oGVeh8q2jp+oP240cpDvhukyy0o9oebyawML2ZXwk/1XeG5A
	xb+7CutEfi65dDlHjE73wS1dc7DlWWDCQO6TQyJA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181989ca78a-b2cb3c80-9c2e-4fa7-9d04-56bda5b8cb9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91c64565ae5aa270960a573d121da74d424ceda0b7d4b31cf87edb68271a557f
Date: Sat, 25 Jun 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656122812
