Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF9A7E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 21:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654378859;
	h=To:Subject:From:Message-Id:Date;
	bh=QDwFJ4HGGBtDtZLy0BLWUnJ7ul5aO2hM7/sEabWws1I=;
	b=jznWD3I8U2xwRDZF38vCXrOzyzHUE9XP+Iq3g8pLQEru79AemMkD+aK2I3X+EIPw
	wE9gUVjTh1l0QND5ITJfRVHYK9ptz5JWuE5aONw3G8c2c37D3bpG5G2RTJ3jz7CVbtm
	6JS5sSD5o7G/D7b1W5MYPD5V+VucLsjq9QsrPMck=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654378859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QDwFJ4HGGBtDtZLy0BLWUnJ7ul5aO2hM7/sEabWws1I=;
	b=S0TzZ4Fl3gWf/Bu3cuUrV1qXnFP7ZpoGthXcpFjMLR5FHepS7vF7Z5yXtFeFp3y1
	kC2sKyXIWHJYzN3Lx4TVR1nFVuNnQi4N+l6sQVhcFh/N+SPxUBe/cVUCQLio0iDq3H3
	Qoa4/uUR3oYYAB1tPx7PtWwBaa0ExRHcOQDzEa3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018130aa0ae8-3442200a-152d-41bb-8471-804db1dea109-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c35efa43ea7d918c0983ae5b26ba4d36f1398706113b0d07fd4d2cfeea28160c
Date: Sat, 4 Jun 2022 21:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654378859
