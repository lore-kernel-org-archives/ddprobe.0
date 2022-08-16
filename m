Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536EE1376
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660638652;
	h=To:Subject:From:Message-Id:Date;
	bh=gcsyv0XFCR7FQ0mcARaOtIf8RHlxjeGjOs2KpE2JIf0=;
	b=EwrCfzLRhxGkApbdNqy6X23KCIhhhGzzpIaWdVP+dr6YLmF0qTy+tv2sO1VeyFCW
	uUED1C7NAfBFPmAq9AAlSU554+XyswLCKlDYpyKj/8en8TCDpM3N7bcpZ+jis7iQJ/t
	vcfPafslXZxiGQsR8shz5OQ5aEFXTFw5FbxEb3Wc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660638652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gcsyv0XFCR7FQ0mcARaOtIf8RHlxjeGjOs2KpE2JIf0=;
	b=K95waEQhiIg835cp0S44LvRBWuIaJ/xYeHSv985B6xrOLyDiz4uJ2qnILtgFToUG
	Cjo1f5Ns6Zyb9O6WoymaZ9RW+1YyCRpebU+3SHPJT44UaVts8HC3ripka6ysNwgloEq
	a0vSlVOM2oVibDi4hPSIaM8NU+f06GTyinz9tVd4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a5c6e890-b9106c5e-a729-49b2-a146-11fdc5fcd778-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59be89723042676c8fd4ab3c78b099d631d695e94d4a9e2172b04249600268af
Date: Tue, 16 Aug 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660638652
