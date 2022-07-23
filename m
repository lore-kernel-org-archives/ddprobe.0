Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA617E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 04:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658549812;
	h=To:Subject:From:Message-Id:Date;
	bh=MQsb6YOQ3K8dEqZDOzlbTVA700uR4yyn24Hz9JSFGoA=;
	b=WnPADkZSg23Zalsj4v9316X/uU8hx48Y07bdYSki8SrFpDeN8WiHfYxxd56EWHmO
	Z/bdS/lWt0ekySRkGU15qEHeku1aNHBXXp9dkGNmI6/htuIOlDvt3ZmhDK1xVRhYsZU
	92o3LxNXqhqWCiNdZ6zPAdAJo+2T13dGIWeXZtOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658549812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MQsb6YOQ3K8dEqZDOzlbTVA700uR4yyn24Hz9JSFGoA=;
	b=Y3nW/yDrdXwZcYDPsluEdqhj+nsBUrcl7JiOs0eFdOjEUWgtRU6gdynQ66sQ2AYB
	WZKDb39g6CLHkaiDDZrb9zVy0pos0+YprpUZodizyZH6InHv820OIx1elQAa++bCchH
	ml+38Wf0k1d1ntDwxiOdlhzabLYXgn+oTyoq/kgk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822945bc29-7ea370e6-6d15-46a5-85e4-afa813c954c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 533bbc1ab40c59027788c9ea4634a76a5a81cddf075a51725c6acba49bbecf4c
Date: Sat, 23 Jul 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658549812
