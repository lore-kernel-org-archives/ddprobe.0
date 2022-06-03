Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BFE10E0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 16:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654272419;
	h=To:Subject:From:Message-Id:Date;
	bh=D/3Ov6OAcJQ+D4swJKdRuBjqaAwdp1FA9Df2H+aiSMg=;
	b=UkN6kbTNitswrXVtc/NbK5G0kjrfm31Q7O3YuLf6zbtrF1WfjrkT/i3wyPd/+ehd
	8l0O/z4sARbpV6S2Q5seSouaYvaI3gthvfvjowkLJjJUImZkrmB6IY3oYFaJ6VhstWV
	cMrMM3OafQ51PomnMKYxazc+OO1qmJZuHhWfEq6w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654272419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D/3Ov6OAcJQ+D4swJKdRuBjqaAwdp1FA9Df2H+aiSMg=;
	b=T6TadNzUBG8NOZ0umvaQOI0UiZkD5BOg9qifNpYLe9SIDBFAhCdPnukbEghcJt2T
	YOkCokDXFbLImoAEKMYI5wWxito8jCA0bZj3ApFhPu/rbFuxc9rk5YpWdA7EIuO29Ev
	9UPym9Ngng6KTZTrL5p2VC3MdAW+hAVDl9lrzelE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812a51e60a-b04fb746-d11f-449b-be72-69272b6a1c63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 467f348264e7655bda77f0673f5429ed41bcd4a769e28f367519f5232ab08f01
Date: Fri, 3 Jun 2022 16:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654272419
