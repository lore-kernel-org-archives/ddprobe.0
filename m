Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DAC2184B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 18:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655144039;
	h=To:Subject:From:Message-Id:Date;
	bh=TMkA45arsOf0LG9WkkZKYITJgaZMz7cnvivxbCeYofo=;
	b=SoxV18DIPuCYvi3aFxHhyeGu/zfv+J6rq9KnWjfWTzu00j6a4booQ4fseM5ZazWU
	Ag5BCU8kuNe+Y7zUZ5mNHYh7y7zinTkNqtFANIDHz1jCEIgo2Q7eDBknfL5DrNyQd3N
	PX2t5y7WCORPsR5nq/NsA3B1WxO2BH+NAzlSy9Yc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655144039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TMkA45arsOf0LG9WkkZKYITJgaZMz7cnvivxbCeYofo=;
	b=hIKPtNoJA3lE+IPZQJ7jqjbbtoRXa9z/Co3L6sGnnoVpq6TN5NHKzGYMofg3ftZn
	IhE6N7DmifV7ZUHvsfcKBTuXIdmlbwjknGawb+ZWCNhVY6lqkczni3K6DtWC/4uxkGK
	xVXBClqIm7TwfkIvjYG9cGYC/av0gwTOWmUEiLng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815e45c36c-c13896e7-0cb3-4ad8-b61b-b588e5e24f8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eae6e202c912ca920d4fba1359c2ed4e28ecbffed86937e3a3e213b687c62560
Date: Mon, 13 Jun 2022 18:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655144039
