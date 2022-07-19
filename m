Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF27185B
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 12:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658232412;
	h=To:Subject:From:Message-Id:Date;
	bh=VmA9ipSz4xTkxUTrj0itRQjnV575m9qY9Kdpf/A2zFo=;
	b=Dz1zRA6loiuVJZYzR7xdW/Dg8zGbGQr0R+bY7Hy1RlYvKXsBIs7Ar959wOY4U0ps
	DpTXCn/LLnPHh+LEuEroKU1Wgal7merFIeH5Vgl42hPr59Kmv/QxEy7A6VASf6V1i5D
	FUYLtOFeoJkH95h5J/dnS4nxRNPm4A2rsROv5dL8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658232412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VmA9ipSz4xTkxUTrj0itRQjnV575m9qY9Kdpf/A2zFo=;
	b=BBc1aEIl8upQGGz5g59Ckz4fLJrXzRg2FXkzBoZZll4uirQUsW73qyVECjvq+mAn
	wo2NhD7mDVfoQI0Hcn3ncW2ayXO1Lj4yTBWUIw9SC5RXbERwtzHa2YMdPxIQ+LXT+g8
	pKu315Az3ODvW7nxtP01hI2M2DEGZ8nOykEif+ag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182165a9879-8e20d68d-5864-4f11-863a-619697c40c0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 054363c521faa9d5e2a52b329977d0c234e73649694d2dc56175bdeeb49d65f5
Date: Tue, 19 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658232412
