Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EACEE7E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 08:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654503599;
	h=To:Subject:From:Message-Id:Date;
	bh=Iz9LHUT9vhR4RJgPsAooP1o3L7lnZeDvPWfzwQKvM8A=;
	b=AVHqaPBxZAw5T1SrbClC2YsS6KVi6ciAy+D5IH1yr3uc7cm6+tw0RTh4I1e7d6XQ
	ce8eQJaxuEqajAglb3fPtYj9t6L3rcxd+Ab0jSGf2wszbA1ECgF1W+80zL8GIA9n2t2
	BDL2bE3xzrOKTqX/ooCnwOqVeUuUzA9eO+tbeLTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654503599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Iz9LHUT9vhR4RJgPsAooP1o3L7lnZeDvPWfzwQKvM8A=;
	b=kXz583m5aoXpoyagluMrCJJilZVGC1sc9+RUTFy6a9VOTyMZ8U5CfB9/3EFD7x/3
	SG0LQ24AZZB5Qly13PzobMmcJJB44K+W3UdnGXbGgBmv+X1tiTfgO7hnJAyZu5r+1F8
	06GTiyzDGz7ktAXasMbjWynE2avISuamOniQlehk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018138196c62-dc454306-3385-47f8-8079-cbc441b17494-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 816e0349378a292c6730ada1cb805fc8d810db69d74d6dd5f1f729ed21436830
Date: Mon, 6 Jun 2022 08:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654503599
