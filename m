Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9217C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659783652;
	h=To:Subject:From:Message-Id:Date;
	bh=WbZ0iQj9WcE6G1Q1igCjAGNYczpNZ53cCi/E6H1H99s=;
	b=kU2LAOH6Yh+tVHHmXIIebMNQSFo1j46itxhklg46fcL4OnVaDlChL8nCi8WoCIoP
	ziiE2m2dUHHtmNnBm2ceIm0pzUWYIQHMLbKvkwVdqL96X6db8qhkvtzaFzYTwsyDnJX
	vE8+JuWxZ/7HmI25LCzXYSGfUpUFucoBFtUkplzs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659783652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WbZ0iQj9WcE6G1Q1igCjAGNYczpNZ53cCi/E6H1H99s=;
	b=WuLV9d7umRWwFgN3d0bLSbOKbB1oWkqoSRr4UKNG+MqHInevPyKw6NkU0WkZsO6V
	66yYjQqszZaoMwds/vgKhQOGR1g8lvUgeLNC4zYKICdyA3OIsbwhWycNIcKy89J8lAF
	ceBR2DnghiHXPdD2PsEF0ZupmzzFlZKwUo7xmVCY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018272d0a4da-dec02b18-d62a-4404-a3ad-6848e329e178-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b05f3b880c6a322e361aaceb45b22cdbeaabaf43654d11310465a77f7da43081
Date: Sat, 6 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659783652
