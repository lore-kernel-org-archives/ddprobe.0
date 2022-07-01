Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9697810E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 06:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656657412;
	h=To:Subject:From:Message-Id:Date;
	bh=4ObNvycwf6j7u0+hu0SPTLJnhQ+y0tawyg50leeFPPM=;
	b=Nw4jTiSmKeosQoRse3wyD8IS9gLur9nv/5C0Ht/d7NWnSa94nAboEAJTxwA9PL5x
	SqRy+XPBouyAkl9HhnWdY7W3Eon9/B/mLbTUtvBpfv7CS3B4HRmj1p2FV2OhNPeK06I
	oywfE2MK1tAT725nbgwId1IMbtU9c94hEeEaV9VY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656657412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4ObNvycwf6j7u0+hu0SPTLJnhQ+y0tawyg50leeFPPM=;
	b=iScrQkGkrOT9koTFfJSh1HWNCe4SPiS6GH6Vv5gr/oLQq0OJPogEnQG5H3k6/Fi/
	P8nT2Bi7ccKeDGyH4xC4FtljUikVTugxWOLOYWfZFRNKSey6UAq0RWBKc1JRJKF+owd
	E9vnL6vJMXhoYtjMGlFdMBBnmNp2FlRdetWyIrvM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b87a00c5-52ddf3d2-1380-49cf-92ca-1c3c45f8bb70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adef403d64ab81ff96928fd7399620c0a1ee98284ae2e838c715211a0113aa96
Date: Fri, 1 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656657412
