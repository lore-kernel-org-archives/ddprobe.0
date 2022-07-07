Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FF5210C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657204012;
	h=To:Subject:From:Message-Id:Date;
	bh=cVdM+qJ3BMMpenqIo+RT5KwG2pkNTzautREY8tXcGtQ=;
	b=Nbpmky0Ui3xcF7voatvgiV6wTYEHxxS+igFzlObQmZf/9qlnQqX/ZtwXJER8EaFA
	GgTPxFTvthkqsZXYqaf8L2XPPqJKkoSEVVJru5Wfsi552LFmDGhfKdijJWczxUZsNS+
	/E2nGEbXO+EBw6sNRvowBjGjlBXAjeX48M8l1tmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657204012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cVdM+qJ3BMMpenqIo+RT5KwG2pkNTzautREY8tXcGtQ=;
	b=DsB7XHOfoDIDrKtARjSXRFmFVTbl6eSJCMKU6/ht5nt6+wknnguFwAerr+yF+PWE
	jhqoYvYGWbN9KD7myBuzdslhwtOMq6G3v8nrMyn3iRmOy0B3sNrv6zO/ONQGVjchy62
	7e010Vsl5lnZ9C5N/nkCS3z7JrdTBLTWxvWVQolo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d90e758f-419e08b0-2b30-4e47-98a8-2ec0428be719-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee8d4b3fc9530c7cdc377e11db391a112f1901c7b27c58390de2a9e19d32d3b8
Date: Thu, 7 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657204012
