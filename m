Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B87D17D3
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 12:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649160838;
	h=To:Subject:From:Message-Id:Date;
	bh=6q5mnY0J+QfYVVGcGU9HbXBbCA+YiXeLkuCKOV+qqic=;
	b=d3CO48SWbiJ5pt99MXB57Duv9UdCy6+p5kekY1XTA99Rdz5nGn5W8lCJmyHA/YLp
	h2pU8lSkuu0JTTQp+VxMyCJjk6hdCG1Ae425BFPYg6dSkGNnvJK4kbxMPJg39QAA0oc
	7+E2JIYfFzulDcwrmaWJB0RIcKW04yM8LPrVJ0I8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649160838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6q5mnY0J+QfYVVGcGU9HbXBbCA+YiXeLkuCKOV+qqic=;
	b=ah+TdYqO9mhxq7ayxKgPS2/KelmtWVMs7MJuiFCVhg1F4Qlu/3+Esli1aGhtwYu5
	627OXkpXQLSednpGrgHrATQyuTLwikhuJ94GEW5DN61XGRme8zEEowLwQ1IKD9hA0Qc
	BieG4NZZV+a5dNdmDkNhdKsOatI4XjnlRCoguhL4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff9a55d20-fc26f608-4439-4457-8301-00ba03f4bee6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1456bc888e4d79941a4a604b644444a3f9376ee5b79a355090424935339dbe45
Date: Tue, 5 Apr 2022 12:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649160838
