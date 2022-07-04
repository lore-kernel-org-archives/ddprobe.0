Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C69E28E1
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656929812;
	h=To:Subject:From:Message-Id:Date;
	bh=Z9pOxTeOGg9+LUe1OYDE7qXmLOo+KY96u+ewy8ctvYs=;
	b=RmqQgCOPwAVo59a9vYSgomn2FeRorkl+XmEM56abupgZxniV5+tN649lf61Y4Zho
	g8vCQBrkcQXJehHgepcn1HT15Z+SwFhaIw8MhkZwkfxpmGXtyV8YUNiDHJayiAIRk5/
	YCKeCYATz7j5MyJ2OUqiScUT/BiT6+OHgRTKFc3c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656929812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z9pOxTeOGg9+LUe1OYDE7qXmLOo+KY96u+ewy8ctvYs=;
	b=ODnZT9G8748goTtQfkxbD7kiJUglMeFq+/f+5w9R8t9JptfahXgk6EC/QSqPJ0hS
	VZIKhex20WkX77/bgTJJiuzreJED1UjdEOZIvq4E86ThEUc3Q7g5/5CP86Li5IjEKFV
	sBAUiDb9moNAussLBCCBBTJN3G8Wdz/utJCcrm1w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c8b67f23-a1640fed-68f9-4765-b4a2-cccc79cffc23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4dc71d699fe3b6181aa143cf8dd79478bd7e343861a5689d04be3df542b94252
Date: Mon, 4 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656929812
