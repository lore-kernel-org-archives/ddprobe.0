Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8CC3206
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 19:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653074279;
	h=To:Subject:From:Message-Id:Date;
	bh=AA7bBeThjhAC//5bKvzlec9JXnZxgQeTJZKhMU+j5+M=;
	b=elDkR8ghfnUIllo0cxOJOxEXfvWS/dv6ywlklUSrsJ1LCDLDMoB/S7PQINArHOv3
	RW1qATZEbsGgqvAPHX5WPXTIEqLgYrjV7qx0+dlSQpSwWnmNfBcd3MzagAh38DRl8dh
	7y4eHbrL1ANPe+v2Zuyq8pN4Ny0kPb+gcjnpoeYs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653074279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AA7bBeThjhAC//5bKvzlec9JXnZxgQeTJZKhMU+j5+M=;
	b=WH+bUMX5Bn0OaCCO5j+SvhMLDKa3aYbp2MXmUcP320mnrsIsYErZ8SjaJThb7OMv
	q2apjauBcnPUgbKd0jYTnZaf3vFFlV5owh7sSlpOcGeyd5iQN1VXKNVIqdCcIF6VHB4
	UwV6K1wPqBiWiReQ/CpmFve0yIf/hMFkyPcGzGOk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e2e7bb94-a2bfa1e0-165f-484d-99c7-55c13a011a7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57a181f787957efbd87a5682c017d8385ebaa61fc80876fae8c4bdbac2192c88
Date: Fri, 20 May 2022 19:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653074279
