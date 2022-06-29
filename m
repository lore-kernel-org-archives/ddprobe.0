Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137A77B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 01:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656464812;
	h=To:Subject:From:Message-Id:Date;
	bh=yLAO4b2XEu1SgQ0Jo5TVNpCGoQ9vbiY/NnthdDMUFlg=;
	b=epCVAPGd+qNIglqMcXI6DLYqaOvadJRu5fJGLMlgmCB84xT81xzTjoSKCM3HdtbS
	JQeCU8OZzBnAlh+kNlm2Z7SMrLe51mGUkNcQzvDaVlIN5diiqfOqtUCoFhoY3C2VJhV
	LnyDrm1Jfhf+0aoeYKIiNF48U3S7mw32/eWonJQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656464812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yLAO4b2XEu1SgQ0Jo5TVNpCGoQ9vbiY/NnthdDMUFlg=;
	b=PvhBkoFBb9VNTtoZm+MrZNj1qK6HHYtGuo9DesfqsW3pldhk7p/ym/Pxm+PDhsPT
	qyq7UQqkbJ6nSkaXvfmVnNWm+LZpPbCe1TRBZ6HQgBgkN8HsCe796Rc1MUkKkgig1Gm
	kJJUVbS3KK6HEevqGYdYyQDw552nWwa/hQMggkvk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181acff291f-89919072-5ead-4d0b-9ecf-b2871269ba8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e7b2049a1fc341635bf3d2064e29e5b3bfece216c20cc8181381ad6c750e9de
Date: Wed, 29 Jun 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656464812
