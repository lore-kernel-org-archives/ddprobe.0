Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FCE441A
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 23:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656803212;
	h=To:Subject:From:Message-Id:Date;
	bh=aOrHOCaonbzVGZp91aHpDVIbaloeZRVY1c80FVkk3IM=;
	b=U1mXGVRSGtLGkWM9T1L7hrFy9qFbAElARkYLPX4vdWIALkcIgfVxf8JgMpQlazaG
	ouqbaf/C/6oMcn8JJh78C8BXyO2w4+Dayb/jYyQqLuYp2/2x3b+34i1kLbFikLXOZBJ
	Efwi+Dw1YIyeU7+5LFbLHjOLBDnjbFwRT8Zf2XmY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656803212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aOrHOCaonbzVGZp91aHpDVIbaloeZRVY1c80FVkk3IM=;
	b=Q+38+0y4TxhaYw+ibzLfmV97rrTKdymd4tN6/VpTdq8QWe3BHp9MsYBzGfLGjA28
	R4ENVYs6mXVGgLFu/X/kd3RlZXAfpjeXGTuEPn7XhKMAE3pGcXh1Mwbxc+Bv4Myp9Q2
	QsJ+d6XmOE3EFALE7eW3t8RQV2sZelG1PApSI4dk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c12abc1f-90f64386-4b19-4e7a-8d31-26ca3d8bc54e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a13e2163f82c00fa1182e63fefec9464f8c26b6f2248774b4074548f70f41395
Date: Sat, 2 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656803212
