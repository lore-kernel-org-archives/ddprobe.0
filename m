Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639EF440F
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660831852;
	h=To:Subject:From:Message-Id:Date;
	bh=Hs0ov4SQ4L7QmMnNUW8SwXMf/IWxxDcUHXEHkNRzH08=;
	b=O5QVkQ6IRfV8dzHWxPJvGOOA88CqKAChVqJwAj9hzai9HCYLZhUgt8ACeZmPkvoh
	iAuCZymUFoz2DVRyXbginm9QugvW1xDzjRkFBX92NMrdc9DfDiwdXmLrQI/zdtfm6En
	H7hCKJHsOe3a7b968sh+l/Fu6ER5aMe2mrqeg7uU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660831852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hs0ov4SQ4L7QmMnNUW8SwXMf/IWxxDcUHXEHkNRzH08=;
	b=GVUPh00iT23d4ZL0duzDZmi3rPiAnvepk7UIPg0KsWrJ8/3QCDCSvTe+IHSLns2i
	br73OIHhcjunuc+xlClkvn3ZiwltTIHmMwS4nDSMYAmI/b5gkDdnfCiOa8n5zb5JWDQ
	hrUmQqZI92wDLnTDZMhZA3dzvyCrZLpVLiXcuMK4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b14ae87f-9c163e92-2db4-4944-a9c5-65a88f53fb71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae6a499317c483ee162904bb13aed83fd16eacfd68a43dab4d3a6ba5155fba72
Date: Thu, 18 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660831852
