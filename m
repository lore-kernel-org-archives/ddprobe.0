Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4602328EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659961252;
	h=To:Subject:From:Message-Id:Date;
	bh=8opDOLoPh0W5H7WZGtd1q0gEJ24WkT+EBK3DyZgZf8w=;
	b=T595aEZA8tDTSbB+kdrD9WlGCxyNJGm9ClUWpM+pATka0E2qdEHFujL6paPqoja1
	VYApXYxvPtGmpRnGAplQpxxFEUtw3zSV7CFVaILQqMZgHdxeIyUXyLwN83EkwKylRNV
	tuOsbA7ZLwYVPauiS8frweBau1WMRgzLrJYaQyU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659961252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8opDOLoPh0W5H7WZGtd1q0gEJ24WkT+EBK3DyZgZf8w=;
	b=QbizHygQeFZRnvQjXbdasHB0AcKbY3MY8NoeyfoK0SAsG6yhXfi4jhkdAhFoA91E
	lVgbwO09o7+ztS72Turb9j4SKg39YfXzA5Ym3/E871XXtzlQOElMr56iGKb0oJQu2kE
	wSdipyU0GSCeZ1UnVjHHomE5NIxvqzURqTqG6ZBI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827d669aec-e8ced21c-58ea-4643-a692-4fa57d4d0dc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c8b879f9b1f9868be5fc57ef27fc3cc403469ae7e62d98351c811e22356dd78
Date: Mon, 8 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659961252
