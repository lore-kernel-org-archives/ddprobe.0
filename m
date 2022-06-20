Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249C72562
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 16:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655742299;
	h=To:Subject:From:Message-Id:Date;
	bh=uo5yDF+hitvo3o8RTLFJ9BmrHHgO9uWLFwPQki/ePuQ=;
	b=cXoJN9ZmWDDRKNXTmRx6UOhe1JHkJE9SIuK4TaB30OZLfDWITI4gnRink92o7gQ+
	icpcQ/ao1FrAHbg6HjSuYIszp0HK3x3HY2O6TPxfww/cki0BpIMz/7UDvkY00lMmyKC
	Vsz3DHXRPdIB+kh7hG7vw/ZDYhRVrwgrNgv9V9/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655742299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uo5yDF+hitvo3o8RTLFJ9BmrHHgO9uWLFwPQki/ePuQ=;
	b=VPszwJhag58QV7wzvz7e0smjcVyIC48/la1rx06Jykgui5s0nCx5H1DA46V3ppYO
	FfSFejUYmzWboNtEUatcX85KKtPjewmi2OWo127K//QizjulNSd9l/36S2liMP1vLIU
	Lwq25Hm94DR502W/tPtrGddX7XTrbz19231Z9qBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018181ee7c71-09b1b4d7-a44c-4b11-b581-9bc001ed6348-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98311909942103b0d261543b960cab61da8c6fdc560071324ecc4811f50e75d2
Date: Mon, 20 Jun 2022 16:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655742299
