Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445F12C9E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 11:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656330412;
	h=To:Subject:From:Message-Id:Date;
	bh=MGyUctutjN9kcH0Rts1vdN/Cl/TXO46CUkOeZelqY60=;
	b=gr0h9p1TdnupDgZQOrMeoLkO6VRdJqyUaIfLYBSM8F4B/fh7OXVVeGqxKpt8KmOU
	OnF0Aexi/LZDMnrrdQm/ag+ulygnUGJrkhBWA8PYRdYrcbID3+4mnOhuAaqLB5XcTEo
	UbccH5Y7NEnZhH+asY03GMk1fOkmsxqKTVuFuBio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656330412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MGyUctutjN9kcH0Rts1vdN/Cl/TXO46CUkOeZelqY60=;
	b=Y6v/UAwSArYbhyoz6AxCMJUP5XXa6R7joyaz7t39gaw5CT5Ru3KfDZwyh0v+95ok
	oabajJJGblkv2Pj8EXRrElhbtO5JxES2+H9g+jE+Zv5SxlDWocG98OnqOwX/qZoLXBu
	LUp10iuPNcJoBT+NenMIrbUyJu4730EAQHYucmoY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a4fc6148-488ce615-aec4-4e81-ac55-fb65865429e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f75835722ad6e33f2e425cc49ca6583ce0ac4bb86b43cc58a06105c1f26045b5
Date: Mon, 27 Jun 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656330412
