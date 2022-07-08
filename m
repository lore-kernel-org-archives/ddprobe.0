Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED4B810
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 11:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657281412;
	h=To:Subject:From:Message-Id:Date;
	bh=YWOF6Ye5pMY//ftOt+kB8+XNifL+Cg++TnRLeFDYIP4=;
	b=A3+VjnO8/YB8ovvBk8Fdi9vQj0hf8aFNtj80A1uPbCKFlTkqfT2zVod8oKya+Eha
	KXT75V2zYFGHQAQ6U48Hh3EyoygoXUkf/f/ia/x/YxKlZG9jTgoV2Od7hEzxAHGeslT
	MKS6j7QwwITIxGYsXHqX2wGl1JwnK4bTTfcmIz/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657281412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YWOF6Ye5pMY//ftOt+kB8+XNifL+Cg++TnRLeFDYIP4=;
	b=KX/umOdTkc0gMCdD0fb7A/qmLgw1FRYAFIz4b0bnK51SQe1WSRS25coacuQ2Wk8x
	a1E4NqSjvPrBgukSObRFgWAte6sbpFdBAKZbUe19boKsJ31zNhT21gn+0fzzO8emYny
	B9hmJKZbgjzyExiDSdHlYAUPzUtY9lQO92Q7G+WM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ddab7cdf-8e33bc96-85f6-41c0-8f7b-c6d2c62f6811-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aef8eb4faf930fc473774874d001eaf283f4d5f46aba76b9ed09e9ec05b7a6ca
Date: Fri, 8 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657281412
