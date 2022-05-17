Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137621103
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 05:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652763779;
	h=To:Subject:From:Message-Id:Date;
	bh=VDwLm5Vhz2oosMl5MWbh1kaGyGhAW/e9Qj4tY4mG7zI=;
	b=KSQrl9UfVNKqW5qoL3vo7wneZegK6eg+pGXgw9BCJ+jTtDe4INLIZ5Yg0SS4qcju
	sBLCxbNMeAUvLNZb69KvQ8cz0zRElXFVnaAjessbhRTUki20Ozr2IxSOsYW66Qr01o6
	j9P8VJd5aPTJ7NbEZUS0CY/YQnPBBeHb7b9+CyVw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652763779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VDwLm5Vhz2oosMl5MWbh1kaGyGhAW/e9Qj4tY4mG7zI=;
	b=ctcbCGgKucJL49BROlKpomSVs6g4Mo5nLhgPBmuYmG4lBG4QanKsIfX1oaKth19w
	P6by5kj8TMwyeKIFuG3AM2A2K14WMoGPRLDKqIKFq91sHB05AvNFn5xcBE92QWqk3Ku
	Sfzs3H5WLm7ICCuVKbxfC7xY3SQwnZyzrfcDPuK8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d065e095-e1af6280-3fbc-48c9-baa4-1bb1f38a5bef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7990cc08914e1e12697812722e0117e44695361a1076684745dc81ef27e779c3
Date: Tue, 17 May 2022 05:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652763779
