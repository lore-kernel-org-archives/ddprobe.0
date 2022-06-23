Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1981841
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 02:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655951099;
	h=To:Subject:From:Message-Id:Date;
	bh=cAawUmdGrjNKv/EvRzkKGlVQBo3bTpN3gSOmMhH8zIY=;
	b=Ep2QsPGW1HjhFGsqMHG3Snyt822VAjnJIRvX2sZEIOrhjMGpdC1eNaluk7Y+fZOA
	QVnXygLiNsBHNJXqAjL4OArdQkn+dTZaeNV+jZC84hI1/i9cokdTLZqrRiWLJEzkB8M
	D60/qT7z2EPjbABSVOKn5t6gvpZHE+fMoirT/2hE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655951099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cAawUmdGrjNKv/EvRzkKGlVQBo3bTpN3gSOmMhH8zIY=;
	b=Uc3rNq4a4L4y6X3W+P654GUgUFQ1ajbscu6m/mQzbhU8urOcjNLNz3zz7wL8cLty
	LMSEqnqonIH56359nypbmi7IEAWQ4dm/a8vtDLCSj1p8xvYaJKfXXw7naFJqZk7RFhX
	1RvlTG6YaXWMC2DDmE7620g2uuS+tusSZAp7SU0k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818e608578-b089d5d8-445a-4b7c-addf-ae480cdd7f29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13bab5c2a34b0c54cb267c6f6c3088bcc228d3b452f29b04fe0f85074a8e4176
Date: Thu, 23 Jun 2022 02:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655951099
