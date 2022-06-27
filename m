Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB4817FE
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 02:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656297412;
	h=To:Subject:From:Message-Id:Date;
	bh=R3gXpFtcd2MZepE+e7o/sUl5WaO6xISQ+WnK9fswGLg=;
	b=JpyY14L30Zdcncq6ql/toAgzeIDrtmjyePeFb7rBoQWrw2Os6wRfmmqHQ/JHwN4w
	X6k2Jz3QfPy1uSRCqxbGbNYtub81/ML2WOWvPw+fbQsUzgq/iKMqpdmvwjI9Zj1mAkU
	S8lXcaNp+0bPlSR0Sy8DPvrKoCYY7IjAe5W11KY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656297412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R3gXpFtcd2MZepE+e7o/sUl5WaO6xISQ+WnK9fswGLg=;
	b=BZZseZwp7WoeKUL9d2D3NoM4amL46fjKTRaHuVsTHXkG6+dYwzg+b8t/Z7f++WQm
	JRLByigfmZtXqaWe16qT7wqUYUPffbzHSRqSusYy78Lo5cj89ex38TDzWe4DLNoYyz0
	UptO0Bk9mzRNxpY4lCjDezS4yyyXrgJZgZHPuIVg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a304d72a-dfdeae2b-51d2-485a-8d2c-2322bc259b07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57774418fdfc4ea606f5960125bbb8ae1ca6d0164607c5cc705bf4a9c255d1a2
Date: Mon, 27 Jun 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656297412
