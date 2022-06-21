Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054F17F5
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 01:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655774759;
	h=To:Subject:From:Message-Id:Date;
	bh=RFXSRsbXXUox3Z4Wj18+/BGcrvGQ1eIONM8rHtxi26k=;
	b=IVB8YgBTHwnnNYZ+u3pb4euhRovTF3O8mxw+/wa5G4rtRmWOpiDxyl/+hiteKcHC
	1mnxKA7CCkrV0O6oAN75aCJRcJm6i9fqmXUOaRJ9/5ZAH+SRKWK88DBNvTBnAwHHpFy
	Cq7UjRWkkY8JtI9ze+H3Mn93KjqLlPAeeflQUwJ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655774759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RFXSRsbXXUox3Z4Wj18+/BGcrvGQ1eIONM8rHtxi26k=;
	b=PloJfcVTPiTozWhpZTSbQ2dGSmJwIVb9f7pFcpHPw8ylfXyBA2OnKCUKI6bTCoTN
	rYCDapKaAs0tYnovm3o1MS/vgeCI2Sn/bsut5Z2sMdFCWuGGOPWhsSkL+BNkpfFJECB
	46flbvMb5paTJP6xifihZsX4224j2SfhS0fsZ7dM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018183ddc99f-5efa65c7-c68e-4abe-92ae-dbafd58f0e71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77344b97248714cab93dd61a172119a2bda7b850439e5d21843a229fbe7d5636
Date: Tue, 21 Jun 2022 01:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655774759
