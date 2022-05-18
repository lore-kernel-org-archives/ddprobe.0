Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C7E4680
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 04:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652848919;
	h=To:Subject:From:Message-Id:Date;
	bh=+j4hPAX4OVsZUfwMdO8P0qMDsPZXC/O7yw2f3jAalz8=;
	b=XSN8RL5Wf/fbaK21Zi2qfbyRLPodbhWp9+w9lA+m1Ilkb5TtHISeHg3dJ5XgtWfG
	Oc8vBNH1SK7vOA/RT8/tbENJWTutxu1Zv7ZZaMe4hED6UHA8rpAYKOnTc07R8KqO9wO
	a5gMLdF7ChvvLmD7d8LFD6qI9CkaS8p2DeCo4Up0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652848919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+j4hPAX4OVsZUfwMdO8P0qMDsPZXC/O7yw2f3jAalz8=;
	b=T9oyRo2kjPfKBOKAD6SEVZYck/PC/09VfmMCN91tBATnTgWM2HNLA+WmCy1XdoJf
	H+6pkDtEBiewPehHwcx7d2/ltWqVm1Xd71LEY5V23VwDfsSpweO2vqs9CuScuRNrycM
	cPAVFFVbBU2sTFfxtfRO4RQcplg0tgF1cq9WzY/w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d57902e0-4f6a4e22-e76c-495a-92a1-14cbe7495c29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bab4bd2a3656f8ee5f7c6124a3c0bf93bd06cd9f8eec49e4be5c50913c7cebd9
Date: Wed, 18 May 2022 04:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652848919
