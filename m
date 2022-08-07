Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9EE1363
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659862852;
	h=To:Subject:From:Message-Id:Date;
	bh=WjCc+LRrb4dAmsIJPc6Ru13dPVSEWFJ4/Ul9m5/wq3E=;
	b=ZWE5zZ4n4scKGhZem8f29wxmsC7DDoEndcviT34gNBdLo9yqa+V2UtYMAi2UOlgz
	/W5PU2aH9DZFsc98k1iwr09r2yiWAg7WjAJX7D5Rz6tzwZNaLsHGFjCUBFVygRR+PnL
	9dc5Zp/h3wNJus5VT+lUFrYQr76rORrgc5XprZVM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659862852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WjCc+LRrb4dAmsIJPc6Ru13dPVSEWFJ4/Ul9m5/wq3E=;
	b=J9NrFmNH+6y9LZSF2FiDFM7bf9ggyQOuWDv+f482JMuNpy28KSSs0tXfmn2vInz6
	LDEwMa4oMCdajBK9fgM2mnslbsTajuR233fQe2zgLCCp67T8GKh7PpeG6I86DaWNV7k
	He4FuqFrmtCndT6inEyPNYJuKH1qcj8d48ZuKwUc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018277892411-a4e2bbb4-2e50-40ea-88df-5572223fcc39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 346c0b69505806b86327752c0156fed1e3487c594a74fb6f7dccac690779ae9a
Date: Sun, 7 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659862852
