Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B04184D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 10:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645698384;
	h=To:Subject:From:Message-Id:Date;
	bh=wwLLRmza/ugt2Vkf6fSLLCtBtbwcEycsyzG2ppIGQes=;
	b=Cen6qBTF1/yZY9Wm46sUM0rWk7P+E6b+HrfyxzkFbhaRx+6o3L4Z54sL3SqAGa0u
	g/PW/Zf8eH8ck6FTgTviYjE3kzVyaH61QtZSVNpMsALdMUEvI3zKkF+mcaG1MMuEyzL
	ZzrUupFSfWuT0CbCh7f1x1fBfYeY4eGV+qG4zlNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645698384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wwLLRmza/ugt2Vkf6fSLLCtBtbwcEycsyzG2ppIGQes=;
	b=ZTdIRg417HDGMr0KmsuCZ+uj0F8zNkssrNY/x6XrmuP51eMT4FEHjYCjVNMAwMSC
	CFut5HQ09gtuZyoYL/Bz1twjv6h5bk8G9bCdkrojUj77oTRH/JfxlsxLbuvCXd095bJ
	X8wPg+hzPh2C6k1iUW9o+H8UO44KBPpfzRIRhTs4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2b44839b-df46da5f-6a56-47e0-8ea0-5856a8bc2ee0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b178028d8bf99f68916414b21ede1417714d63f8d9c7516b455ca9c25cd7959
Date: Thu, 24 Feb 2022 10:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645698384
