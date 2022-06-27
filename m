Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9CBE2C9E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656328612;
	h=To:Subject:From:Message-Id:Date;
	bh=fSKwLUFg8BfBIU2vrQxAwwFmzpqGABOHLItJTKwcsCw=;
	b=DWlAaEa+Na6ElUkD2Tc3piW9thSggPed4FNLASU2pKfhTY/XH4o45JV1rzoRDc0w
	KI7yDvSKFvF84FnIekRNw3mWx9RImNub3V7B4TIfSXRcvWYGZ0tyNkHWbG+INnB62rK
	uW6deP+5nGKcpaFZ0lzdOoRt304NWL4dFgDJkRC8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656328612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fSKwLUFg8BfBIU2vrQxAwwFmzpqGABOHLItJTKwcsCw=;
	b=bTIzyWwbkcmhJAjpse5th7ZftE9nRgIgHjRWDe293bXlN8wskpcorcbsldGuDwiU
	vbg5eXqH0YUcQepJkm3iOBmyTwwDIKkVr3t0J8q2su2msmKho8PBXfBTzsYBwaT0ZZO
	Zk3mXc1hwEt1I6Gl9HaUmh6Cg51eRHD0BhAtaU04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a4e0e9ef-94cf196b-f925-4c97-81d9-6857218bb85d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d336c4f4a999c3f70db517f925ecfe35dff8b3167329d209878e38e55888d8b2
Date: Mon, 27 Jun 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656328612
