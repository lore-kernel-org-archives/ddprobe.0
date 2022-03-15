Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687EB1FD4
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647348384;
	h=To:Subject:From:Message-Id:Date;
	bh=2+Tfb7piNHoNczaQqMhpDq3YyUHcpS5Fo6kjt6B7ZaM=;
	b=Fa+G1fyjeLKHTDwYi+lo+oWu47rDaJ5VpMSPWHlRPmZZ8ZCCPcHN6aqXihZoyYt5
	CMzg0pw3WAl8WG1oENia1CYiZ9xIOzgHZg1sQuOPYcc3pABG1tEO864jurc+RnSVXWO
	X0F1hvuh+FZihcIZ6iGK5JbX1iGuHsussp1Q7f+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647348384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2+Tfb7piNHoNczaQqMhpDq3YyUHcpS5Fo6kjt6B7ZaM=;
	b=WKxmJ0psGDuJTTge2lljmkOzjM3pyUulze3If6ieY2cy45fqcFm0RFfExalVGcP5
	Kxb0tKzy1dfks+QB35BvwhMsSNh/lxwYKXu1LkdUAOtQO6sbneNAiBBckJA833zwNhj
	OWFDEMgH7fK8zHcv+tAQ4GbMuhDqhlo+UM41yXMo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8d9d83e1-20a62452-da5c-4806-9156-7741074f073e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66bb7bd72a56389673752eed34ec1f9a5ae44dee5c90bc67c895090d192c76c7
Date: Tue, 15 Mar 2022 12:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647348384
