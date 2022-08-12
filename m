Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECF7320A
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660344652;
	h=To:Subject:From:Message-Id:Date;
	bh=pZT+6NP84LW0r4g4K/1zsAAybNNRxgtE2gy0M6Il8RQ=;
	b=PxEHrp/i4k4yzWdCRf7AEFbaNTIKtGFsiA/wA+S/0aEyEhcXm2ZhNyIJv3MCY2J/
	d/7io4XTUxwi0oo/+g3SJ5sMKRkZ5WamyFxvfAwD9eYyyXrOhfdUmtyntGAzHQqh21S
	GCQGjorCAT7hragbj5vmo7IStAEQi8E1ssDZ0Q+M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660344652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pZT+6NP84LW0r4g4K/1zsAAybNNRxgtE2gy0M6Il8RQ=;
	b=Yu5eesVbJiRCWZ+TpP4E9FfpcRYtQB6iy24mK2GmTfRehUk4+fB8J44wIRW04XQ2
	+y7Ym4qMnA7rLy/RFUrp4LzYq8E2yLbxedpSXySWwipbHNKPagjBsH1O92YMZyXnTWG
	que020JXC4W8UwFl9pi2BHdyTz/+Ny4V68/IscIA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829440d334-4530b3eb-8874-4304-95c5-acb470d319fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c9fff3d482e01e65262cb9c7396f4928b625e78520187b1b5b630aa1eca424f
Date: Fri, 12 Aug 2022 22:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660344652
