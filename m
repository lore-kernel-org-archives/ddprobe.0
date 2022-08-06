Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5386C1114
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659779452;
	h=To:Subject:From:Message-Id:Date;
	bh=yw3rm9F/nSWWNhoLRmBBB1HhZaCYBD/NA42FgmOmR+0=;
	b=PWYDXVvsfM8wxowrhSGTzF5JicQ9fguE4lyQdGkqnIV8vXW9EVu+utM7oIoMTgh9
	P16CPr2+F6ARLAqxnKFuvtuq/xBtAlmhf/0dzmn25UAt8srYsqAR2lvgiidcey/G4FU
	QYWI+SZs9BgO6lYJNE1+cQIUiLAjz7VZOHEtrIE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659779452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yw3rm9F/nSWWNhoLRmBBB1HhZaCYBD/NA42FgmOmR+0=;
	b=UwYAscG0pb1oT7WmJR5G4EHt7IEv9JaxncAGLecy9APRwWdXuvasWBhV8D6eFfwR
	7x8EWmaeyW40iAdZhn8I8NkwqChrSYKn2lbo01V26MpFZ0NTtx/oNDoda1tEqKzNll2
	xQejgHfjPZG4hCn5wzva6k8uZ6v2bxP9VlKuBb3w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018272908e85-9215eabd-c672-4714-a375-8723cc9f671a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e50495f1dd5d403a3db08f09aab23f47ab937012c8fe1fa9b4f6ddafecbdec3
Date: Sat, 6 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659779452
