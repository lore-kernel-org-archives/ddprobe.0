Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F170D658
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 05:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655703779;
	h=To:Subject:From:Message-Id:Date;
	bh=xrTrLeTY3ueH3aohLFFBcBIQhDcKOsOYdG20h2udMK4=;
	b=aGjwWg2Ek2A3tJBTbGXbk2ZJRLytkTgphGCxK0YcHf7Sb8P3U26GsraWix1C7vjX
	cecVjNjjrFNvS4gmSIWqTr/6JZZnQhVVT9s+E9PZ8vZzKsf2vVfjJl6GmdSCIQx5pV8
	KHKj7LzBIP36aBed6KothiKsBTehKKbT8noL1ej8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655703779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xrTrLeTY3ueH3aohLFFBcBIQhDcKOsOYdG20h2udMK4=;
	b=jmykAktenjAKvJv5qfL3v+adDwcC0cFqFpBY7SJm7rbvddv8xlY4ylpVWHhLC51O
	vKzd7oeeewU58cB53xU4qgDlf2U05osSazNFVgznbyYEi7QY8SPwVn4knYA2yOGSe3d
	H3n+kkz3riE6j+c4KdGAnh6h1nckjEEHFX3JaUPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817fa2b7e3-26a03f6e-a06c-48fc-b958-2dc05c78e3cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c59a984cf6c9816ca512933fcc0a4fdc4f86d250a19f35fc5ac1c0873d3caf23
Date: Mon, 20 Jun 2022 05:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655703779
