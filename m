Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8447E0
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 06:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657261012;
	h=To:Subject:From:Message-Id:Date;
	bh=ikkEandM5OA8k7R3e6JvndngPhBQlrAFtoOj040lIK4=;
	b=cxM8t1XtnC6sA03E8ftlx3sgMQPPH7wbXDkaSENZLxJAgbxciw58lczql2E/edWc
	ZTAEP5mwjNysk/fIQvfx+XMZDSQyN3lCb0+FKBRyUbIJe3XF71cvIzPuq7smpxCEJww
	Ua5ysxUNa4DWDk/rSMXZb3CoYUtKkB2egik9g4A4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657261012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ikkEandM5OA8k7R3e6JvndngPhBQlrAFtoOj040lIK4=;
	b=k6AtwDzmj9IBL42xVyxxCbp/vYcWFx6/Iqsjq8CjHabSwYZZidlXzAAo3OroOHxG
	aDnJppBrko3/gc3gzLCaXdw0Ca6lBppDRlFafnM8I5tZlORj8x8T1JTZL8zb6OC1b7+
	om4gOJ3VVe4UybdM82CNLyF0Pf+mrh9SXijeEEz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dc743556-dc94ed97-99c9-41c7-aa5a-a32cecff905f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 211e074c4c18637fe1dd69baa0de42304360dfcc99a4a45993a8f25a97a52b4c
Date: Fri, 8 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657261012
