Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315DB7C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 05:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656220612;
	h=To:Subject:From:Message-Id:Date;
	bh=aBDLNT6kV8zegqIU90JhZqX8s2aWNCdaqE/kIsOil9k=;
	b=XKeZCcKyjRplsf8q1qs3TFS5nnkQ5mKP5XEAkeX3h3T7Y5FbdMUT6NOeaxELzz8l
	/vHHq7VAeBFL3uSsF3pZe/QDyr0N+1VdU+WoFBOxT3TlATeJqvGrP07nuMbuvHNfnsf
	JMqmT0+IOv1Ksp6sJwn+02MgO9yBfYKxDXI3lhuI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656220612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aBDLNT6kV8zegqIU90JhZqX8s2aWNCdaqE/kIsOil9k=;
	b=D5aLTsGwJTx4tN6i32mqS+dua40aH+nxevCi2FmzHhjMHNs13WSyxYmfxt4082lD
	OZriTUVWU3yX9jxEhNM9wbIqanzMrqUUL+pb5r/iwoNq6KIC+GlMOpl4NsXZqrIQQ3F
	puqFNnhX0GBDkSNibO98gfDYYFMSllQqfSVbf34Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819e70f6d4-0fc8a22b-2b8f-4669-902e-4d0c277e340e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba63d1cea0b109fea252b16add2d4987faa5cf44352bb39ed524b1e5c00c2675
Date: Sun, 26 Jun 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656220612
