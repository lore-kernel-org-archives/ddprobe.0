Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581A24C6C
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661211052;
	h=To:Subject:From:Message-Id:Date;
	bh=hEoB9HeRAOIR0xjeqLZMlwkB5XDlZvG/Jrh3z5pCyc4=;
	b=fzogDns3Av2oXvXLy7igfyc41RT3yRj3BPBnRyK0gQHL3j8BO8fKQqHs5GCr+Hnq
	Vu5Fk/Xei6KtNkJYbPdJDsxiux6CosWfv+olOl04tV8cXs4L5z9oLBnBSTV/SVcRTDd
	ofG6ACmwqKQPGiFoFV73Gt0tJUwk9ktOvsag3yMs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661211052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hEoB9HeRAOIR0xjeqLZMlwkB5XDlZvG/Jrh3z5pCyc4=;
	b=Fj5XmAzN28Kg7C7ArosOh15tONHe1jy+cm3PaO7FKL76DnG4pbY0GeyrTCMNkZt6
	4H/G2MvyqzRwjBFgkzFR2PQaD0+cHHjsjeltiu1gdM17AMKzG9+Vm3T1J7xjfdv+4+V
	Z4oTaRSkC75EyL+VAXPotbdcTQcJBS7unk6y55Pg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c7e50a3b-53eb4810-f187-4552-aaa2-1a8519e94f65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76852a042c523ad9a3690429c8ac6fe554c2fd5436c5d3ddda5c2ae52c672efd
Date: Mon, 22 Aug 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661211052
