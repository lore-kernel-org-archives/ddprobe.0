Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564C010F5
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660544452;
	h=To:Subject:From:Message-Id:Date;
	bh=krNmjEE6gTXn8bGH+fVH7ZeQrPfhbpn18JEJYk1QB44=;
	b=KuGllJ/J7x/K61iVO7gDiukAdvv+ALgPPdwZwaX8izbgU4LPW7pOUkJA3ktKu92Y
	JBjbtLms4OqyzlkHcxKrLvRK95J62jemykIjAw9Orq2UiF46aR6zHDz7LPA2TWXB5Xv
	Ar/0ytTQr2Sj6KJuuM+f957DEi/tcYkPshEZjCok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660544452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=krNmjEE6gTXn8bGH+fVH7ZeQrPfhbpn18JEJYk1QB44=;
	b=OoqEYPQNxFVWSXoF/tWW9OMPE0XUyo3cQ9j0vo+bjNk//oKCU3plhKEadlj9akCs
	//L4TYMGIhSPXM1NKWiE0CPp7lavL2U7tf2mCedMiOtdTUUPgfRhsBnOCqB+FLntbZ5
	aTyhiYx/7y7MHT/uwQM6xXuD7oiolA/36WZa7DXk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a029881d-b58faf47-6e70-4d6b-a634-87da6179d28d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e2c996d8a7f5d74f16bd503d325891db1a06f8fd49ecf1750696b58dc663ce0
Date: Mon, 15 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660544452
