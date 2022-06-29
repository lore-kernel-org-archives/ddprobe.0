Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBE57B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 00:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656464212;
	h=To:Subject:From:Message-Id:Date;
	bh=vTtunWAPoVwt55Gt2mxxNU3wtfJxdkn6XT7I/kLAeaw=;
	b=lcOEobkIwmSjsGsi7WXvfFK+LubC7fjRTJUCPzXZHJmsJSMORteUkWFtDXtxE5Cq
	61F1FWbdKFM9j0kr368+v3yNN4X8lAiq3C+jQpp7fSAI79u2dtxvnzElo4dknKYr/Tr
	34CsFO6Gjr9Z30FZ9+llaCG63ZI4+nOfxC8jfbq4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656464212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vTtunWAPoVwt55Gt2mxxNU3wtfJxdkn6XT7I/kLAeaw=;
	b=dwJEc/qV5ECiqAzvpgfMsveMkFNzSuxk5ZboavtVna3XN0C4ehXoz4Tk4q9G6ogb
	LkXFmPjifuCt/u9clkiqhYD4RUgz0/Huu2Kn60wbi4vsnQsWF4lZ0v1pl+i6n7E738x
	epziCxANWaqhGoMzGCIQX92zNcuXnjAgyrekgrgg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181acf60145-ea22899a-84c8-486e-bff5-1a4c68e0e64d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1f78bd2601eba6b350236d9283aae27e26eac0aab60f88e1f6362dc97046362
Date: Wed, 29 Jun 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656464212
