Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55831259A
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658848252;
	h=To:Subject:From:Message-Id:Date;
	bh=IFeSj0NpKZbk/1uehUywMZkN3GY8Kohi68P0l4pLSto=;
	b=aKhHGzIk2quCth9PGRMp/WFHTf8D+fDHE1Z0Fkm5mwSzpS/TQc0yvd8o+Q4Pg3nh
	7SbqlqzIJQICZp1kLZFMLKyIeZxcCJ6TWvm3v4s4ODTfZyWdFExOyvnc0uXQNeaKJXO
	crYlusWnjjXedJl5Zx8uaKjPPl+a0EhTSKfkgFAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658848252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IFeSj0NpKZbk/1uehUywMZkN3GY8Kohi68P0l4pLSto=;
	b=jeobWh9xeT/+RmKFOZz7fhAsDcnTcYSGxe8PNjXshmdiesSPj4HMQM3crXrzjaeb
	IJMuc6uXIEYUISPb0tKWKnfodgoIHtNXqxHAIV1PS21fafeD244wHK/Ncu2wRt2wSgk
	dmYlxnf3IiSWJ5bYsKOdLZVQ18/9/XZy2UDcc1Kk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823b0f9280-81dfbd1a-a890-46dc-87b1-0ca9bf7f3bbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c75b41524894da593aaf4bce6c389d7ca5c0f8e327ab7d3e6627bf218ccc298
Date: Tue, 26 Jul 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658848252
