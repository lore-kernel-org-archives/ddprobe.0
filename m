Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AB51FA3
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659897652;
	h=To:Subject:From:Message-Id:Date;
	bh=mgoFk8+AIbUmSoAyis9RQyZJH+SLr8zQH76qjiHlKxw=;
	b=gtJse3DURjgWX6X+bbRdnfSYZ5BJzyAqDyF+22i4y6Uk2h3wizrR9WxnhjvJTeaV
	Si51lGzxcNpKR0tYFkEX41Td1w1yhBUv+JQve0uP3yRq0n6bjCNYZnV+48V5vDpaz3K
	u3FLQFC1scFe7xZy5O9NXKa3A0THgMDGhYcQCP48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659897652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mgoFk8+AIbUmSoAyis9RQyZJH+SLr8zQH76qjiHlKxw=;
	b=ZofKW+ZBf6os0dTVq5otjEyByRWKQ5ZNyjRvyPhD2ohgOtgbldvwUUH6uW4Xqm74
	23BkFP3/uMELT1q4ld09uo1Knj1c2rwsbpfTQQ44GvtxDT+LIEAI2dgOmn9jKGPW3l9
	Sr9HWyJhmB8atgRy71GTuXeKT/HPBoXoJjX+REr8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182799c2551-2a5d1902-48ca-440e-a49c-a11480e6c3f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22ee96161e6b35cf0bd33310137bb32a3924bdff908464b0cc39e2957236eee5
Date: Sun, 7 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659897652
